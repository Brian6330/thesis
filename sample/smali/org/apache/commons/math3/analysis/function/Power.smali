.class public Lorg/apache/commons/math3/analysis/function/Power;
.super Ljava/lang/Object;
.source "Power.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;
.implements Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;


# instance fields
.field private final p:D


# direct methods
.method public constructor <init>(D)V
    .locals 1
    .param p1, "p"    # D

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-wide p1, p0, Lorg/apache/commons/math3/analysis/function/Power;->p:D

    .line 41
    return-void
.end method


# virtual methods
.method public derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 53
    invoke-static {p0}, Lorg/apache/commons/math3/analysis/FunctionUtils;->toDifferentiableUnivariateFunction(Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;)Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;->derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;

    move-result-object v0

    return-object v0
.end method

.method public value(D)D
    .locals 3
    .param p1, "x"    # D

    .prologue
    .line 45
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/function/Power;->p:D

    invoke-static {p1, p2, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public value(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 2
    .param p1, "t"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    .prologue
    .line 60
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/function/Power;->p:D

    invoke-virtual {p1, v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->pow(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v0

    return-object v0
.end method
