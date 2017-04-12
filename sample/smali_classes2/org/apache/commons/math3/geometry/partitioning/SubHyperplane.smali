.class public interface abstract Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
.super Ljava/lang/Object;
.source "SubHyperplane.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/apache/commons/math3/geometry/Space;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract copySelf()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane",
            "<TS;>;"
        }
    .end annotation
.end method

.method public abstract getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane",
            "<TS;>;"
        }
    .end annotation
.end method

.method public abstract getSize()D
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract reunite(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane",
            "<TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane",
            "<TS;>;"
        }
    .end annotation
.end method

.method public abstract side(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/Side;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane",
            "<TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/Side;"
        }
    .end annotation
.end method

.method public abstract split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane",
            "<TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane",
            "<TS;>;"
        }
    .end annotation
.end method
