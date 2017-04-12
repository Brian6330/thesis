.class public Lorg/apache/commons/math3/analysis/function/Constant;
.super Ljava/lang/Object;
.source "Constant.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;
.implements Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;


# instance fields
.field private final c:D


# direct methods
.method public constructor <init>(D)V
    .locals 1
    .param p1, "c"    # D

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-wide p1, p0, Lorg/apache/commons/math3/analysis/function/Constant;->c:D

    .line 38
    return-void
.end method


# virtual methods
.method public derivative()Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 50
    new-instance v0, Lorg/apache/commons/math3/analysis/function/Constant;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/analysis/function/Constant;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/function/Constant;->derivative()Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    move-result-object v0

    return-object v0
.end method

.method public value(D)D
    .locals 2
    .param p1, "x"    # D

    .prologue
    .line 42
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/function/Constant;->c:D

    return-wide v0
.end method

.method public value(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 6
    .param p1, "t"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    .prologue
    .line 57
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getFreeParameters()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v2

    iget-wide v4, p0, Lorg/apache/commons/math3/analysis/function/Constant;->c:D

    invoke-direct {v0, v1, v2, v4, v5}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IID)V

    return-object v0
.end method
