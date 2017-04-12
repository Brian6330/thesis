.class public abstract Lorg/apache/commons/math3/analysis/solvers/AbstractDifferentiableUnivariateSolver;
.super Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;
.source "AbstractDifferentiableUnivariateSolver.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/solvers/DifferentiableUnivariateSolver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver",
        "<",
        "Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;",
        ">;",
        "Lorg/apache/commons/math3/analysis/solvers/DifferentiableUnivariateSolver;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private functionDerivative:Lorg/apache/commons/math3/analysis/UnivariateFunction;


# direct methods
.method protected constructor <init>(D)V
    .locals 1
    .param p1, "absoluteAccuracy"    # D

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;-><init>(D)V

    .line 45
    return-void
.end method

.method protected constructor <init>(DDD)V
    .locals 1
    .param p1, "relativeAccuracy"    # D
    .param p3, "absoluteAccuracy"    # D
    .param p5, "functionValueAccuracy"    # D

    .prologue
    .line 57
    invoke-direct/range {p0 .. p6}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;-><init>(DDD)V

    .line 58
    return-void
.end method


# virtual methods
.method protected computeDerivativeObjectiveValue(D)D
    .locals 3
    .param p1, "point"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/solvers/AbstractDifferentiableUnivariateSolver;->incrementEvaluationCount()V

    .line 70
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/solvers/AbstractDifferentiableUnivariateSolver;->functionDerivative:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v0

    return-wide v0
.end method

.method protected setup(ILorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;DDD)V
    .locals 1
    .param p1, "maxEval"    # I
    .param p2, "f"    # Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;
    .param p3, "min"    # D
    .param p5, "max"    # D
    .param p7, "startValue"    # D

    .prologue
    .line 79
    invoke-super/range {p0 .. p8}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->setup(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDD)V

    .line 80
    invoke-interface {p2}, Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;->derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/solvers/AbstractDifferentiableUnivariateSolver;->functionDerivative:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    .line 81
    return-void
.end method

.method protected bridge synthetic setup(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDD)V
    .locals 11
    .param p1, "x0"    # I
    .param p2, "x1"    # Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .param p3, "x2"    # D
    .param p5, "x3"    # D
    .param p7, "x4"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 31
    move-object v3, p2

    check-cast v3, Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    move-object v1, p0

    move v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-virtual/range {v1 .. v9}, Lorg/apache/commons/math3/analysis/solvers/AbstractDifferentiableUnivariateSolver;->setup(ILorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;DDD)V

    return-void
.end method
