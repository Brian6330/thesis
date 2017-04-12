.class public Lorg/apache/commons/math3/fitting/HarmonicFitter;
.super Lorg/apache/commons/math3/fitting/CurveFitter;
.source "HarmonicFitter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/fitting/HarmonicFitter$ParameterGuesser;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/fitting/CurveFitter",
        "<",
        "Lorg/apache/commons/math3/analysis/function/HarmonicOscillator$Parametric;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;)V
    .locals 0
    .param p1, "optimizer"    # Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/fitting/CurveFitter;-><init>(Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;)V

    .line 48
    return-void
.end method


# virtual methods
.method public fit()[D
    .locals 2

    .prologue
    .line 78
    new-instance v0, Lorg/apache/commons/math3/fitting/HarmonicFitter$ParameterGuesser;

    invoke-virtual {p0}, Lorg/apache/commons/math3/fitting/HarmonicFitter;->getObservations()[Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/fitting/HarmonicFitter$ParameterGuesser;-><init>([Lorg/apache/commons/math3/fitting/WeightedObservedPoint;)V

    invoke-virtual {v0}, Lorg/apache/commons/math3/fitting/HarmonicFitter$ParameterGuesser;->guess()[D

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/fitting/HarmonicFitter;->fit([D)[D

    move-result-object v0

    return-object v0
.end method

.method public fit([D)[D
    .locals 1
    .param p1, "initialGuess"    # [D

    .prologue
    .line 63
    new-instance v0, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator$Parametric;

    invoke-direct {v0}, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator$Parametric;-><init>()V

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/math3/fitting/HarmonicFitter;->fit(Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;[D)[D

    move-result-object v0

    return-object v0
.end method
