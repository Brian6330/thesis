.class public interface abstract Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;
.super Ljava/lang/Object;
.source "BracketedUnivariateSolver.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/solvers/BaseUnivariateSolver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FUNC::",
        "Lorg/apache/commons/math3/analysis/UnivariateFunction;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/analysis/solvers/BaseUnivariateSolver",
        "<TFUNC;>;"
    }
.end annotation


# virtual methods
.method public abstract solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDDLorg/apache/commons/math3/analysis/solvers/AllowedSolution;)D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITFUNC;DDD",
            "Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;",
            ")D"
        }
    .end annotation
.end method

.method public abstract solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDLorg/apache/commons/math3/analysis/solvers/AllowedSolution;)D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITFUNC;DD",
            "Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;",
            ")D"
        }
    .end annotation
.end method
