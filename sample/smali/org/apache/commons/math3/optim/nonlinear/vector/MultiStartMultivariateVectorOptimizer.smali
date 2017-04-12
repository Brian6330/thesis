.class public Lorg/apache/commons/math3/optim/nonlinear/vector/MultiStartMultivariateVectorOptimizer;
.super Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;
.source "MultiStartMultivariateVectorOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer",
        "<",
        "Lorg/apache/commons/math3/optim/PointVectorValuePair;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final optima:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/optim/PointVectorValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private final optimizer:Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;ILorg/apache/commons/math3/random/RandomVectorGenerator;)V
    .locals 1
    .param p1, "optimizer"    # Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;
    .param p2, "starts"    # I
    .param p3, "generator"    # Lorg/apache/commons/math3/random/RandomVectorGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;-><init>(Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;ILorg/apache/commons/math3/random/RandomVectorGenerator;)V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/MultiStartMultivariateVectorOptimizer;->optima:Ljava/util/List;

    .line 67
    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/MultiStartMultivariateVectorOptimizer;->optimizer:Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/optim/nonlinear/vector/MultiStartMultivariateVectorOptimizer;)Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/optim/nonlinear/vector/MultiStartMultivariateVectorOptimizer;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/MultiStartMultivariateVectorOptimizer;->optimizer:Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;

    return-object v0
.end method

.method private getPairComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lorg/apache/commons/math3/optim/PointVectorValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    new-instance v0, Lorg/apache/commons/math3/optim/nonlinear/vector/MultiStartMultivariateVectorOptimizer$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/MultiStartMultivariateVectorOptimizer$1;-><init>(Lorg/apache/commons/math3/optim/nonlinear/vector/MultiStartMultivariateVectorOptimizer;)V

    return-object v0
.end method


# virtual methods
.method protected clear()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/MultiStartMultivariateVectorOptimizer;->optima:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 93
    return-void
.end method

.method public bridge synthetic getOptima()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/MultiStartMultivariateVectorOptimizer;->getOptima()[Lorg/apache/commons/math3/optim/PointVectorValuePair;

    move-result-object v0

    return-object v0
.end method

.method public getOptima()[Lorg/apache/commons/math3/optim/PointVectorValuePair;
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/MultiStartMultivariateVectorOptimizer;->optima:Ljava/util/List;

    invoke-direct {p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/MultiStartMultivariateVectorOptimizer;->getPairComparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 76
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/MultiStartMultivariateVectorOptimizer;->optima:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/commons/math3/optim/PointVectorValuePair;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/optim/PointVectorValuePair;

    return-object v0
.end method

.method protected bridge synthetic store(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 41
    check-cast p1, Lorg/apache/commons/math3/optim/PointVectorValuePair;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/vector/MultiStartMultivariateVectorOptimizer;->store(Lorg/apache/commons/math3/optim/PointVectorValuePair;)V

    return-void
.end method

.method protected store(Lorg/apache/commons/math3/optim/PointVectorValuePair;)V
    .locals 1
    .param p1, "optimum"    # Lorg/apache/commons/math3/optim/PointVectorValuePair;

    .prologue
    .line 84
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/MultiStartMultivariateVectorOptimizer;->optima:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    return-void
.end method
