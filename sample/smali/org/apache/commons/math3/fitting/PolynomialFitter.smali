.class public Lorg/apache/commons/math3/fitting/PolynomialFitter;
.super Lorg/apache/commons/math3/fitting/CurveFitter;
.source "PolynomialFitter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/fitting/CurveFitter",
        "<",
        "Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction$Parametric;",
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
    .line 39
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/fitting/CurveFitter;-><init>(Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;)V

    .line 40
    return-void
.end method


# virtual methods
.method public fit(I[D)[D
    .locals 1
    .param p1, "maxEval"    # I
    .param p2, "guess"    # [D

    .prologue
    .line 56
    new-instance v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction$Parametric;

    invoke-direct {v0}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction$Parametric;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/commons/math3/fitting/PolynomialFitter;->fit(ILorg/apache/commons/math3/analysis/ParametricUnivariateFunction;[D)[D

    move-result-object v0

    return-object v0
.end method

.method public fit([D)[D
    .locals 1
    .param p1, "guess"    # [D

    .prologue
    .line 70
    new-instance v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction$Parametric;

    invoke-direct {v0}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction$Parametric;-><init>()V

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/math3/fitting/PolynomialFitter;->fit(Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;[D)[D

    move-result-object v0

    return-object v0
.end method
