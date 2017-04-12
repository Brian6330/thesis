.class public interface abstract Lorg/apache/commons/math3/geometry/enclosing/Encloser;
.super Ljava/lang/Object;
.source "Encloser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/apache/commons/math3/geometry/Space;",
        "P::",
        "Lorg/apache/commons/math3/geometry/Point",
        "<TS;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract enclose(Ljava/lang/Iterable;)Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TP;>;)",
            "Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall",
            "<TS;TP;>;"
        }
    .end annotation
.end method
