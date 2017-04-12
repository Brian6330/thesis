.class public Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;
.super Ljava/lang/Object;
.source "BaseMultivariateVectorMultiStartOptimizer.java"

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
.field private generator:Lorg/apache/commons/math3/random/RandomVectorGenerator;

.field private maxEvaluations:I

.field private optima:[Lorg/apache/commons/math3/optimization/PointVectorValuePair;

.field private final optimizer:Lorg/apache/commons/math3/optimization/BaseMultivariateVectorOptimizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/optimization/BaseMultivariateVectorOptimizer",
            "<TFUNC;>;"
        }
    .end annotation
.end field

.field private starts:I

.field private totalEvaluations:I


# direct methods
.method protected constructor <init>(Lorg/apache/commons/math3/optimization/BaseMultivariateVectorOptimizer;ILorg/apache/commons/math3/random/RandomVectorGenerator;)V
    .locals 2
    .param p2, "starts"    # I
    .param p3, "generator"    # Lorg/apache/commons/math3/random/RandomVectorGenerator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optimization/BaseMultivariateVectorOptimizer",
            "<TFUNC;>;I",
            "Lorg/apache/commons/math3/random/RandomVectorGenerator;",
            ")V"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;, "Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer<TFUNC;>;"
    .local p1, "optimizer":Lorg/apache/commons/math3/optimization/BaseMultivariateVectorOptimizer;, "Lorg/apache/commons/math3/optimization/BaseMultivariateVectorOptimizer<TFUNC;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 76
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0

    .line 78
    :cond_1
    const/4 v0, 0x1

    if-ge p2, v0, :cond_2

    .line 79
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0

    .line 82
    :cond_2
    iput-object p1, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->optimizer:Lorg/apache/commons/math3/optimization/BaseMultivariateVectorOptimizer;

    .line 83
    iput p2, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->starts:I

    .line 84
    iput-object p3, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->generator:Lorg/apache/commons/math3/random/RandomVectorGenerator;

    .line 85
    return-void
.end method

.method private sortPairs([D[D)V
    .locals 2
    .param p1, "target"    # [D
    .param p2, "weights"    # [D

    .prologue
    .line 183
    .local p0, "this":Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;, "Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer<TFUNC;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->optima:[Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    new-instance v1, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer$1;

    invoke-direct {v1, p0, p1, p2}, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer$1;-><init>(Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;[D[D)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 203
    return-void
.end method


# virtual methods
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
    .line 133
    .local p0, "this":Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;, "Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer<TFUNC;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->optimizer:Lorg/apache/commons/math3/optimization/BaseMultivariateVectorOptimizer;

    invoke-interface {v0}, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    move-result-object v0

    return-object v0
.end method

.method public getEvaluations()I
    .locals 1

    .prologue
    .line 128
    .local p0, "this":Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;, "Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer<TFUNC;>;"
    iget v0, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->totalEvaluations:I

    return v0
.end method

.method public getMaxEvaluations()I
    .locals 1

    .prologue
    .line 123
    .local p0, "this":Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;, "Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer<TFUNC;>;"
    iget v0, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->maxEvaluations:I

    return v0
.end method

.method public getOptima()[Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    .locals 3

    .prologue
    .line 115
    .local p0, "this":Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;, "Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer<TFUNC;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->optima:[Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NO_OPTIMUM_COMPUTED_YET:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 118
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->optima:[Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/optimization/PointVectorValuePair;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    return-object v0
.end method

.method public optimize(ILorg/apache/commons/math3/analysis/MultivariateVectorFunction;[D[D[D)Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    .locals 11
    .param p1, "maxEval"    # I
    .param p3, "target"    # [D
    .param p4, "weights"    # [D
    .param p5, "startPoint"    # [D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITFUNC;[D[D[D)",
            "Lorg/apache/commons/math3/optimization/PointVectorValuePair;"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "this":Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;, "Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer<TFUNC;>;"
    .local p2, "f":Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;, "TFUNC;"
    iput p1, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->maxEvaluations:I

    .line 143
    const/4 v7, 0x0

    .line 144
    .local v7, "lastException":Ljava/lang/RuntimeException;
    iget v0, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->starts:I

    new-array v0, v0, [Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->optima:[Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    .line 145
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->totalEvaluations:I

    .line 148
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget v0, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->starts:I

    if-ge v6, v0, :cond_1

    .line 152
    :try_start_0
    iget-object v10, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->optima:[Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    iget-object v0, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->optimizer:Lorg/apache/commons/math3/optimization/BaseMultivariateVectorOptimizer;

    iget v1, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->totalEvaluations:I

    sub-int v1, p1, v1

    if-nez v6, :cond_0

    move-object/from16 v5, p5

    :goto_1
    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorOptimizer;->optimize(ILorg/apache/commons/math3/analysis/MultivariateVectorFunction;[D[D[D)Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    move-result-object v0

    aput-object v0, v10, v6
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/ConvergenceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 162
    :goto_2
    iget v0, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->totalEvaluations:I

    iget-object v1, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->optimizer:Lorg/apache/commons/math3/optimization/BaseMultivariateVectorOptimizer;

    invoke-interface {v1}, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorOptimizer;->getEvaluations()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->totalEvaluations:I

    .line 148
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 152
    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->generator:Lorg/apache/commons/math3/random/RandomVectorGenerator;

    invoke-interface {v2}, Lorg/apache/commons/math3/random/RandomVectorGenerator;->nextVector()[D
    :try_end_1
    .catch Lorg/apache/commons/math3/exception/ConvergenceException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    goto :goto_1

    .line 154
    :catch_0
    move-exception v9

    .line 155
    .local v9, "oe":Lorg/apache/commons/math3/exception/ConvergenceException;
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->optima:[Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    const/4 v1, 0x0

    aput-object v1, v0, v6

    goto :goto_2

    .line 156
    .end local v9    # "oe":Lorg/apache/commons/math3/exception/ConvergenceException;
    :catch_1
    move-exception v8

    .line 157
    .local v8, "mue":Ljava/lang/RuntimeException;
    move-object v7, v8

    .line 158
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->optima:[Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    const/4 v1, 0x0

    aput-object v1, v0, v6

    goto :goto_2

    .line 165
    .end local v8    # "mue":Ljava/lang/RuntimeException;
    :cond_1
    invoke-direct {p0, p3, p4}, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->sortPairs([D[D)V

    .line 167
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->optima:[Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_2

    .line 168
    throw v7

    .line 172
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->optima:[Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method
