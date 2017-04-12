.class public abstract Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;
.super Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;
.source "AbstractUnivariateSolver.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver",
        "<",
        "Lorg/apache/commons/math3/analysis/UnivariateFunction;",
        ">;",
        "Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;"
    }
.end annotation


# direct methods
.method protected constructor <init>(D)V
    .locals 1
    .param p1, "absoluteAccuracy"    # D

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;-><init>(D)V

    .line 37
    return-void
.end method

.method protected constructor <init>(DD)V
    .locals 1
    .param p1, "relativeAccuracy"    # D
    .param p3, "absoluteAccuracy"    # D

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;-><init>(DD)V

    .line 47
    return-void
.end method

.method protected constructor <init>(DDD)V
    .locals 1
    .param p1, "relativeAccuracy"    # D
    .param p3, "absoluteAccuracy"    # D
    .param p5, "functionValueAccuracy"    # D

    .prologue
    .line 58
    invoke-direct/range {p0 .. p6}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;-><init>(DDD)V

    .line 59
    return-void
.end method
