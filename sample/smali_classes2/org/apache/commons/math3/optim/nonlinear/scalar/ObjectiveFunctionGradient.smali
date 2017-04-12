.class public Lorg/apache/commons/math3/optim/nonlinear/scalar/ObjectiveFunctionGradient;
.super Ljava/lang/Object;
.source "ObjectiveFunctionGradient.java"

# interfaces
.implements Lorg/apache/commons/math3/optim/OptimizationData;


# instance fields
.field private final gradient:Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;)V
    .locals 0
    .param p1, "g"    # Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/ObjectiveFunctionGradient;->gradient:Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

    .line 36
    return-void
.end method


# virtual methods
.method public getObjectiveFunctionGradient()Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/ObjectiveFunctionGradient;->gradient:Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

    return-object v0
.end method
