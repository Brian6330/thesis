.class public Lorg/apache/commons/math3/analysis/function/Minus;
.super Ljava/lang/Object;
.source "Minus.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;
.implements Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public derivative()Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 40
    new-instance v0, Lorg/apache/commons/math3/analysis/function/Constant;

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/analysis/function/Constant;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/function/Minus;->derivative()Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    move-result-object v0

    return-object v0
.end method

.method public value(D)D
    .locals 3
    .param p1, "x"    # D

    .prologue
    .line 32
    neg-double v0, p1

    return-wide v0
.end method

.method public value(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 1
    .param p1, "t"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    .prologue
    .line 47
    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->negate()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v0

    return-object v0
.end method
