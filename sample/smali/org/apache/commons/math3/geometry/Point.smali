.class public interface abstract Lorg/apache/commons/math3/geometry/Point;
.super Ljava/lang/Object;
.source "Point.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/apache/commons/math3/geometry/Space;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# virtual methods
.method public abstract distance(Lorg/apache/commons/math3/geometry/Point;)D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point",
            "<TS;>;)D"
        }
    .end annotation
.end method

.method public abstract getSpace()Lorg/apache/commons/math3/geometry/Space;
.end method

.method public abstract isNaN()Z
.end method
