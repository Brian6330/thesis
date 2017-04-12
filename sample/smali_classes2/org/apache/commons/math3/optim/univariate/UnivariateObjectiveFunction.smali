.class public Lorg/apache/commons/math3/optim/univariate/UnivariateObjectiveFunction;
.super Ljava/lang/Object;
.source "UnivariateObjectiveFunction.java"

# interfaces
.implements Lorg/apache/commons/math3/optim/OptimizationData;


# instance fields
.field private final function:Lorg/apache/commons/math3/analysis/UnivariateFunction;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/analysis/UnivariateFunction;)V
    .locals 0
    .param p1, "f"    # Lorg/apache/commons/math3/analysis/UnivariateFunction;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/apache/commons/math3/optim/univariate/UnivariateObjectiveFunction;->function:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    .line 36
    return-void
.end method


# virtual methods
.method public getObjectiveFunction()Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/apache/commons/math3/optim/univariate/UnivariateObjectiveFunction;->function:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    return-object v0
.end method
