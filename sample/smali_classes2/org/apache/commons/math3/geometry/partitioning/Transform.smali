.class public interface abstract Lorg/apache/commons/math3/geometry/partitioning/Transform;
.super Ljava/lang/Object;
.source "Transform.java"


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
.method public abstract apply(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/Point;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point",
            "<TS;>;)",
            "Lorg/apache/commons/math3/geometry/Point",
            "<TS;>;"
        }
    .end annotation
.end method

.method public abstract apply(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane",
            "<TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane",
            "<TS;>;"
        }
    .end annotation
.end method

.method public abstract apply(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane",
            "<TT;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane",
            "<TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane",
            "<TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane",
            "<TT;>;"
        }
    .end annotation
.end method
