.class public Lorg/apache/commons/math3/optim/nonlinear/scalar/ObjectiveFunction;
.super Ljava/lang/Object;
.source "ObjectiveFunction.java"

# interfaces
.implements Lorg/apache/commons/math3/optim/OptimizationData;


# instance fields
.field private final function:Lorg/apache/commons/math3/analysis/MultivariateFunction;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/analysis/MultivariateFunction;)V
    .locals 0
    .param p1, "f"    # Lorg/apache/commons/math3/analysis/MultivariateFunction;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/ObjectiveFunction;->function:Lorg/apache/commons/math3/analysis/MultivariateFunction;

    .line 36
    return-void
.end method


# virtual methods
.method public getObjectiveFunction()Lorg/apache/commons/math3/analysis/MultivariateFunction;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/ObjectiveFunction;->function:Lorg/apache/commons/math3/analysis/MultivariateFunction;

    return-object v0
.end method
