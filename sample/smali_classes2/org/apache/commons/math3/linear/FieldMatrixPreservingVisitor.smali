.class public interface abstract Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;
.super Ljava/lang/Object;
.source "FieldMatrixPreservingVisitor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/FieldElement",
        "<*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract end()Lorg/apache/commons/math3/FieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract start(IIIIII)V
.end method

.method public abstract visit(IILorg/apache/commons/math3/FieldElement;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)V"
        }
    .end annotation
.end method
