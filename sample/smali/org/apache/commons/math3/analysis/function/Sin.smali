.class public Lorg/apache/commons/math3/analysis/function/Sin;
.super Ljava/lang/Object;
.source "Sin.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;
.implements Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public derivative()Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 41
    new-instance v0, Lorg/apache/commons/math3/analysis/function/Cos;

    invoke-direct {v0}, Lorg/apache/commons/math3/analysis/function/Cos;-><init>()V

    return-object v0
.end method

.method public bridge synthetic derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/function/Sin;->derivative()Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    move-result-object v0

    return-object v0
.end method

.method public value(D)D
    .locals 3
    .param p1, "x"    # D

    .prologue
    .line 33
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public value(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 1
    .param p1, "t"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    .prologue
    .line 48
    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->sin()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v0

    return-object v0
.end method
