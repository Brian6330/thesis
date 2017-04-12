.class public interface abstract Lorg/apache/commons/math3/linear/DecompositionSolver;
.super Ljava/lang/Object;
.source "DecompositionSolver.java"


# virtual methods
.method public abstract getInverse()Lorg/apache/commons/math3/linear/RealMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/SingularMatrixException;
        }
    .end annotation
.end method

.method public abstract isNonSingular()Z
.end method

.method public abstract solve(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/SingularMatrixException;
        }
    .end annotation
.end method

.method public abstract solve(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/SingularMatrixException;
        }
    .end annotation
.end method
