.class public interface abstract Lorg/apache/commons/math3/linear/FieldDecompositionSolver;
.super Ljava/lang/Object;
.source "FieldDecompositionSolver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/FieldElement",
        "<TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getInverse()Lorg/apache/commons/math3/linear/FieldMatrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/linear/FieldMatrix",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract isNonSingular()Z
.end method

.method public abstract solve(Lorg/apache/commons/math3/linear/FieldMatrix;)Lorg/apache/commons/math3/linear/FieldMatrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrix",
            "<TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldMatrix",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract solve(Lorg/apache/commons/math3/linear/FieldVector;)Lorg/apache/commons/math3/linear/FieldVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;"
        }
    .end annotation
.end method
