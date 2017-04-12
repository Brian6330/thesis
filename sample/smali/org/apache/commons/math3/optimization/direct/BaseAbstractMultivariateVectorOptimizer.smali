.class public abstract Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;
.super Ljava/lang/Object;
.source "BaseAbstractMultivariateVectorOptimizer.java"

# interfaces
.implements Lorg/apache/commons/math3/optimization/BaseMultivariateVectorOptimizer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FUNC::",
        "Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/optimization/BaseMultivariateVectorOptimizer",
        "<TFUNC;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private checker:Lorg/apache/commons/math3/optimization/ConvergenceChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker",
            "<",
            "Lorg/apache/commons/math3/optimization/PointVectorValuePair;",
            ">;"
        }
    .end annotation
.end field

.field protected final evaluations:Lorg/apache/commons/math3/util/Incrementor;

.field private function:Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TFUNC;"
        }
    .end annotation
.end field

.field private start:[D

.field private target:[D

.field private weight:[D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private weightMatrix:Lorg/apache/commons/math3/linear/RealMatrix;


# direct methods
.method protected constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;, "Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer<TFUNC;>;"
    new-instance v0, Lorg/apache/commons/math3/optimization/SimpleVectorValueChecker;

    invoke-direct {v0}, Lorg/apache/commons/math3/optimization/SimpleVectorValueChecker;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;-><init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 75
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker",
            "<",
            "Lorg/apache/commons/math3/optimization/PointVectorValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;, "Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer<TFUNC;>;"
    .local p1, "checker":Lorg/apache/commons/math3/optimization/ConvergenceChecker;, "Lorg/apache/commons/math3/optimization/ConvergenceChecker<Lorg/apache/commons/math3/optimization/PointVectorValuePair;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lorg/apache/commons/math3/util/Incrementor;

    invoke-direct {v0}, Lorg/apache/commons/math3/util/Incrementor;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    .line 80
    iput-object p1, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->checker:Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    .line 81
    return-void
.end method

.method private checkParameters()V
    .locals 3

    .prologue
    .line 365
    .local p0, "this":Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;, "Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer<TFUNC;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->target:[D

    array-length v0, v0

    iget-object v1, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->weightMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 366
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget-object v1, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->target:[D

    array-length v1, v1

    iget-object v2, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->weightMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 369
    :cond_0
    return-void
.end method

.method private varargs parseOptimizationData([Lorg/apache/commons/math3/optimization/OptimizationData;)V
    .locals 5
    .param p1, "optData"    # [Lorg/apache/commons/math3/optimization/OptimizationData;

    .prologue
    .line 342
    .local p0, "this":Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;, "Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer<TFUNC;>;"
    move-object v0, p1

    .local v0, "arr$":[Lorg/apache/commons/math3/optimization/OptimizationData;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 343
    .local v1, "data":Lorg/apache/commons/math3/optimization/OptimizationData;
    instance-of v4, v1, Lorg/apache/commons/math3/optimization/Target;

    if-eqz v4, :cond_1

    .line 344
    check-cast v1, Lorg/apache/commons/math3/optimization/Target;

    .end local v1    # "data":Lorg/apache/commons/math3/optimization/OptimizationData;
    invoke-virtual {v1}, Lorg/apache/commons/math3/optimization/Target;->getTarget()[D

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->target:[D

    .line 342
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 347
    .restart local v1    # "data":Lorg/apache/commons/math3/optimization/OptimizationData;
    :cond_1
    instance-of v4, v1, Lorg/apache/commons/math3/optimization/Weight;

    if-eqz v4, :cond_2

    .line 348
    check-cast v1, Lorg/apache/commons/math3/optimization/Weight;

    .end local v1    # "data":Lorg/apache/commons/math3/optimization/OptimizationData;
    invoke-virtual {v1}, Lorg/apache/commons/math3/optimization/Weight;->getWeight()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->weightMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    goto :goto_1

    .line 351
    .restart local v1    # "data":Lorg/apache/commons/math3/optimization/OptimizationData;
    :cond_2
    instance-of v4, v1, Lorg/apache/commons/math3/optimization/InitialGuess;

    if-eqz v4, :cond_0

    .line 352
    check-cast v1, Lorg/apache/commons/math3/optimization/InitialGuess;

    .end local v1    # "data":Lorg/apache/commons/math3/optimization/OptimizationData;
    invoke-virtual {v1}, Lorg/apache/commons/math3/optimization/InitialGuess;->getInitialGuess()[D

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->start:[D

    goto :goto_1

    .line 356
    :cond_3
    return-void
.end method


# virtual methods
.method protected computeObjectiveValue([D)[D
    .locals 3
    .param p1, "point"    # [D

    .prologue
    .line 108
    .local p0, "this":Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;, "Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer<TFUNC;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/MaxCountExceededException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->function:Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

    invoke-interface {v1, p1}, Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;->value([D)[D

    move-result-object v1

    return-object v1

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Lorg/apache/commons/math3/exception/MaxCountExceededException;
    new-instance v1, Lorg/apache/commons/math3/exception/TooManyEvaluationsException;

    invoke-virtual {v0}, Lorg/apache/commons/math3/exception/MaxCountExceededException;->getMax()Ljava/lang/Number;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/exception/TooManyEvaluationsException;-><init>(Ljava/lang/Number;)V

    throw v1
.end method

.method protected abstract doOptimize()Lorg/apache/commons/math3/optimization/PointVectorValuePair;
.end method

.method public getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker",
            "<",
            "Lorg/apache/commons/math3/optimization/PointVectorValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "this":Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;, "Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer<TFUNC;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->checker:Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    return-object v0
.end method

.method public getEvaluations()I
    .locals 1

    .prologue
    .line 90
    .local p0, "this":Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;, "Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer<TFUNC;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result v0

    return v0
.end method

.method public getMaxEvaluations()I
    .locals 1

    .prologue
    .line 85
    .local p0, "this":Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;, "Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer<TFUNC;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->getMaximalCount()I

    move-result v0

    return v0
.end method

.method protected getObjectiveFunction()Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TFUNC;"
        }
    .end annotation

    .prologue
    .line 281
    .local p0, "this":Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;, "Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer<TFUNC;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->function:Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

    return-object v0
.end method

.method public getStartPoint()[D
    .locals 1

    .prologue
    .line 250
    .local p0, "this":Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;, "Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer<TFUNC;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->start:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public getTarget()[D
    .locals 1

    .prologue
    .line 270
    .local p0, "this":Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;, "Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer<TFUNC;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->target:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method protected getTargetRef()[D
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 298
    .local p0, "this":Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;, "Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer<TFUNC;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->target:[D

    return-object v0
.end method

.method public getWeight()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .prologue
    .line 260
    .local p0, "this":Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;, "Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer<TFUNC;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->weightMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->copy()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0
.end method

.method protected getWeightRef()[D
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 306
    .local p0, "this":Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;, "Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer<TFUNC;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->weight:[D

    return-object v0
.end method

.method public optimize(ILorg/apache/commons/math3/analysis/MultivariateVectorFunction;[D[D[D)Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    .locals 1
    .param p1, "maxEval"    # I
    .param p3, "t"    # [D
    .param p4, "w"    # [D
    .param p5, "startPoint"    # [D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITFUNC;[D[D[D)",
            "Lorg/apache/commons/math3/optimization/PointVectorValuePair;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 124
    .local p0, "this":Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;, "Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer<TFUNC;>;"
    .local p2, "f":Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;, "TFUNC;"
    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->optimizeInternal(ILorg/apache/commons/math3/analysis/MultivariateVectorFunction;[D[D[D)Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    move-result-object v0

    return-object v0
.end method

.method protected varargs optimize(ILorg/apache/commons/math3/analysis/MultivariateVectorFunction;[Lorg/apache/commons/math3/optimization/OptimizationData;)Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    .locals 1
    .param p1, "maxEval"    # I
    .param p3, "optData"    # [Lorg/apache/commons/math3/optimization/OptimizationData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITFUNC;[",
            "Lorg/apache/commons/math3/optimization/OptimizationData;",
            ")",
            "Lorg/apache/commons/math3/optimization/PointVectorValuePair;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "this":Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;, "Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer<TFUNC;>;"
    .local p2, "f":Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;, "TFUNC;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->optimizeInternal(ILorg/apache/commons/math3/analysis/MultivariateVectorFunction;[Lorg/apache/commons/math3/optimization/OptimizationData;)Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    move-result-object v0

    return-object v0
.end method

.method protected optimizeInternal(ILorg/apache/commons/math3/analysis/MultivariateVectorFunction;[D[D[D)Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    .locals 3
    .param p1, "maxEval"    # I
    .param p3, "t"    # [D
    .param p4, "w"    # [D
    .param p5, "startPoint"    # [D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITFUNC;[D[D[D)",
            "Lorg/apache/commons/math3/optimization/PointVectorValuePair;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 183
    .local p0, "this":Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;, "Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer<TFUNC;>;"
    .local p2, "f":Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;, "TFUNC;"
    if-nez p2, :cond_0

    .line 184
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0

    .line 186
    :cond_0
    if-nez p3, :cond_1

    .line 187
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0

    .line 189
    :cond_1
    if-nez p4, :cond_2

    .line 190
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0

    .line 192
    :cond_2
    if-nez p5, :cond_3

    .line 193
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0

    .line 195
    :cond_3
    array-length v0, p3

    array-length v1, p4

    if-eq v0, v1, :cond_4

    .line 196
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, p3

    array-length v2, p4

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 199
    :cond_4
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/apache/commons/math3/optimization/OptimizationData;

    const/4 v1, 0x0

    new-instance v2, Lorg/apache/commons/math3/optimization/Target;

    invoke-direct {v2, p3}, Lorg/apache/commons/math3/optimization/Target;-><init>([D)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lorg/apache/commons/math3/optimization/Weight;

    invoke-direct {v2, p4}, Lorg/apache/commons/math3/optimization/Weight;-><init>([D)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lorg/apache/commons/math3/optimization/InitialGuess;

    invoke-direct {v2, p5}, Lorg/apache/commons/math3/optimization/InitialGuess;-><init>([D)V

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->optimizeInternal(ILorg/apache/commons/math3/analysis/MultivariateVectorFunction;[Lorg/apache/commons/math3/optimization/OptimizationData;)Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    move-result-object v0

    return-object v0
.end method

.method protected varargs optimizeInternal(ILorg/apache/commons/math3/analysis/MultivariateVectorFunction;[Lorg/apache/commons/math3/optimization/OptimizationData;)Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    .locals 1
    .param p1, "maxEval"    # I
    .param p3, "optData"    # [Lorg/apache/commons/math3/optimization/OptimizationData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITFUNC;[",
            "Lorg/apache/commons/math3/optimization/OptimizationData;",
            ")",
            "Lorg/apache/commons/math3/optimization/PointVectorValuePair;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 231
    .local p0, "this":Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;, "Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer<TFUNC;>;"
    .local p2, "f":Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;, "TFUNC;"
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/util/Incrementor;->setMaximalCount(I)V

    .line 232
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->resetCount()V

    .line 233
    iput-object p2, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->function:Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

    .line 235
    invoke-direct {p0, p3}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->parseOptimizationData([Lorg/apache/commons/math3/optimization/OptimizationData;)V

    .line 237
    invoke-direct {p0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->checkParameters()V

    .line 239
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->setUp()V

    .line 241
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->doOptimize()Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    move-result-object v0

    return-object v0
.end method

.method protected setUp()V
    .locals 6

    .prologue
    .line 321
    .local p0, "this":Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;, "Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer<TFUNC;>;"
    iget-object v2, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->target:[D

    array-length v0, v2

    .line 322
    .local v0, "dim":I
    new-array v2, v0, [D

    iput-object v2, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->weight:[D

    .line 323
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 324
    iget-object v2, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->weight:[D

    iget-object v3, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->weightMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v3, v1, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v4

    aput-wide v4, v2, v1

    .line 323
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 326
    :cond_0
    return-void
.end method
