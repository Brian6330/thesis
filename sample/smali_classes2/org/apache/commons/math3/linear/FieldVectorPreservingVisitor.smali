.class public interface abstract Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;
.super Ljava/lang/Object;
.source "FieldVectorPreservingVisitor.java"


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

.method public abstract start(III)V
.end method

.method public abstract visit(ILorg/apache/commons/math3/FieldElement;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation
.end method
