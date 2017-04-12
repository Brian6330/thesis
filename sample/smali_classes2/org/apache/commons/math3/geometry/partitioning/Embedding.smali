.class public interface abstract Lorg/apache/commons/math3/geometry/partitioning/Embedding;
.super Ljava/lang/Object;
.source "Embedding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/apache/commons/math3/geometry/Space;",
        "T::",
        "Lorg/apache/commons/math3/geometry/Space;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/Point;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point",
            "<TT;>;)",
            "Lorg/apache/commons/math3/geometry/Point",
            "<TS;>;"
        }
    .end annotation
.end method

.method public abstract toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/Point;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point",
            "<TS;>;)",
            "Lorg/apache/commons/math3/geometry/Point",
            "<TT;>;"
        }
    .end annotation
.end method
