.class public Lorg/apache/commons/math3/optimization/fitting/PolynomialFitter;
.super Lorg/apache/commons/math3/optimization/fitting/CurveFitter;
.source "PolynomialFitter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/optimization/fitting/CurveFitter",
        "<",
        "Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction$Parametric;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final degree:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILorg/apache/commons/math3/optimization/DifferentiableMultivariateVectorOptimizer;)V
    .locals 0
    .param p1, "degree"    # I
    .param p2, "optimizer"    # Lorg/apache/commons/math3/optimization/DifferentiableMultivariateVectorOptimizer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;-><init>(Lorg/apache/commons/math3/optimization/DifferentiableMultivariateVectorOptimizer;)V

    .line 52
    iput p1, p0, Lorg/apache/commons/math3/optimization/fitting/PolynomialFitter;->degree:I

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/optimization/DifferentiableMultivariateVectorOptimizer;)V
    .locals 1
    .param p1, "optimizer"    # Lorg/apache/commons/math3/optimization/DifferentiableMultivariateVectorOptimizer;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;-><init>(Lorg/apache/commons/math3/optimization/DifferentiableMultivariateVectorOptimizer;)V

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/math3/optimization/fitting/PolynomialFitter;->degree:I

    .line 64
    return-void
.end method


# virtual methods
.method public fit()[D
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 76
    new-instance v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction$Parametric;

    invoke-direct {v0}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction$Parametric;-><init>()V

    iget v1, p0, Lorg/apache/commons/math3/optimization/fitting/PolynomialFitter;->degree:I

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [D

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/optimization/fitting/PolynomialFitter;->fit(Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;[D)[D

    move-result-object v0

    return-object v0
.end method

.method public fit(I[D)[D
    .locals 1
    .param p1, "maxEval"    # I
    .param p2, "guess"    # [D

    .prologue
    .line 94
    new-instance v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction$Parametric;

    invoke-direct {v0}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction$Parametric;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/commons/math3/optimization/fitting/PolynomialFitter;->fit(ILorg/apache/commons/math3/analysis/ParametricUnivariateFunction;[D)[D

    move-result-object v0

    return-object v0
.end method

.method public fit([D)[D
    .locals 1
    .param p1, "guess"    # [D

    .prologue
    .line 109
    new-instance v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction$Parametric;

    invoke-direct {v0}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction$Parametric;-><init>()V

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/math3/optimization/fitting/PolynomialFitter;->fit(Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;[D)[D

    move-result-object v0

    return-object v0
.end method
