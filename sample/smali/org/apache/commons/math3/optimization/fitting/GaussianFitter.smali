.class public Lorg/apache/commons/math3/optimization/fitting/GaussianFitter;
.super Lorg/apache/commons/math3/optimization/fitting/CurveFitter;
.source "GaussianFitter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$ParameterGuesser;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/optimization/fitting/CurveFitter",
        "<",
        "Lorg/apache/commons/math3/analysis/function/Gaussian$Parametric;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optimization/DifferentiableMultivariateVectorOptimizer;)V
    .locals 0
    .param p1, "optimizer"    # Lorg/apache/commons/math3/optimization/DifferentiableMultivariateVectorOptimizer;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;-><init>(Lorg/apache/commons/math3/optimization/DifferentiableMultivariateVectorOptimizer;)V

    .line 68
    return-void
.end method


# virtual methods
.method public fit()[D
    .locals 3

    .prologue
    .line 120
    new-instance v1, Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$ParameterGuesser;

    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/fitting/GaussianFitter;->getObservations()[Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$ParameterGuesser;-><init>([Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;)V

    invoke-virtual {v1}, Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$ParameterGuesser;->guess()[D

    move-result-object v0

    .line 121
    .local v0, "guess":[D
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/optimization/fitting/GaussianFitter;->fit([D)[D

    move-result-object v1

    return-object v1
.end method

.method public fit([D)[D
    .locals 2
    .param p1, "initialGuess"    # [D

    .prologue
    .line 84
    new-instance v0, Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$1;-><init>(Lorg/apache/commons/math3/optimization/fitting/GaussianFitter;)V

    .line 110
    .local v0, "f":Lorg/apache/commons/math3/analysis/function/Gaussian$Parametric;
    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/math3/optimization/fitting/GaussianFitter;->fit(Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;[D)[D

    move-result-object v1

    return-object v1
.end method
