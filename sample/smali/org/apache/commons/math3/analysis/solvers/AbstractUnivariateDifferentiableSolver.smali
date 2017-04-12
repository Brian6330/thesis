.class public abstract Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateDifferentiableSolver;
.super Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;
.source "AbstractUnivariateDifferentiableSolver.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/solvers/UnivariateDifferentiableSolver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver",
        "<",
        "Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;",
        ">;",
        "Lorg/apache/commons/math3/analysis/solvers/UnivariateDifferentiableSolver;"
    }
.end annotation


# instance fields
.field private function:Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;


# direct methods
.method protected constructor <init>(D)V
    .locals 1
    .param p1, "absoluteAccuracy"    # D

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;-><init>(D)V

    .line 44
    return-void
.end method

.method protected constructor <init>(DDD)V
    .locals 1
    .param p1, "relativeAccuracy"    # D
    .param p3, "absoluteAccuracy"    # D
    .param p5, "functionValueAccuracy"    # D

    .prologue
    .line 56
    invoke-direct/range {p0 .. p6}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;-><init>(DDD)V

    .line 57
    return-void
.end method


# virtual methods
.method protected computeObjectiveValueAndDerivative(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 7
    .param p1, "point"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 69
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateDifferentiableSolver;->incrementEvaluationCount()V

    .line 70
    iget-object v6, p0, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateDifferentiableSolver;->function:Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;

    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    const/4 v3, 0x0

    move v2, v1

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IIID)V

    invoke-interface {v6, v0}, Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;->value(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v0

    return-object v0
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
    .line 30
    move-object v3, p2

    check-cast v3, Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;

    move-object v1, p0

    move v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-virtual/range {v1 .. v9}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateDifferentiableSolver;->setup(ILorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;DDD)V

    return-void
.end method

.method protected setup(ILorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;DDD)V
    .locals 1
    .param p1, "maxEval"    # I
    .param p2, "f"    # Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;
    .param p3, "min"    # D
    .param p5, "max"    # D
    .param p7, "startValue"    # D

    .prologue
    .line 79
    invoke-super/range {p0 .. p8}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->setup(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDD)V

    .line 80
    iput-object p2, p0, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateDifferentiableSolver;->function:Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;

    .line 81
    return-void
.end method
