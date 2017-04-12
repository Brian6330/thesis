.class public Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;
.super Ljava/lang/Object;
.source "AbstractCurveFitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/fitting/AbstractCurveFitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "TheoreticalValuesFunction"
.end annotation


# instance fields
.field private final f:Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;

.field private final points:[D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;Ljava/util/Collection;)V
    .locals 8
    .param p1, "f"    # Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/commons/math3/fitting/WeightedObservedPoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p2, "observations":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/fitting/WeightedObservedPoint;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;->f:Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;

    .line 105
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v3

    .line 106
    .local v3, "len":I
    new-array v5, v3, [D

    iput-object v5, p0, Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;->points:[D

    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, "i":I
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    .line 109
    .local v4, "obs":Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    iget-object v5, p0, Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;->points:[D

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-virtual {v4}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v6

    aput-wide v6, v5, v0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 111
    .end local v4    # "obs":Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;)[D
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;

    .prologue
    .line 91
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;->points:[D

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;)Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;

    .prologue
    .line 91
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;->f:Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;

    return-object v0
.end method


# virtual methods
.method public getModelFunction()Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;
    .locals 1

    .prologue
    .line 117
    new-instance v0, Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction$1;-><init>(Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;)V

    return-object v0
.end method

.method public getModelFunctionJacobian()Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;
    .locals 1

    .prologue
    .line 135
    new-instance v0, Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction$2;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction$2;-><init>(Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;)V

    return-object v0
.end method
