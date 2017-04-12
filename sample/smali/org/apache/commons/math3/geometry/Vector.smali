.class public interface abstract Lorg/apache/commons/math3/geometry/Vector;
.super Ljava/lang/Object;
.source "Vector.java"

# interfaces
.implements Lorg/apache/commons/math3/geometry/Point;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/apache/commons/math3/geometry/Space;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/Point",
        "<TS;>;"
    }
.end annotation


# virtual methods
.method public abstract add(DLorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/apache/commons/math3/geometry/Vector",
            "<TS;>;)",
            "Lorg/apache/commons/math3/geometry/Vector",
            "<TS;>;"
        }
    .end annotation
.end method

.method public abstract add(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector",
            "<TS;>;)",
            "Lorg/apache/commons/math3/geometry/Vector",
            "<TS;>;"
        }
    .end annotation
.end method

.method public abstract distance(Lorg/apache/commons/math3/geometry/Vector;)D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector",
            "<TS;>;)D"
        }
    .end annotation
.end method

.method public abstract distance1(Lorg/apache/commons/math3/geometry/Vector;)D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector",
            "<TS;>;)D"
        }
    .end annotation
.end method

.method public abstract distanceInf(Lorg/apache/commons/math3/geometry/Vector;)D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector",
            "<TS;>;)D"
        }
    .end annotation
.end method

.method public abstract distanceSq(Lorg/apache/commons/math3/geometry/Vector;)D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector",
            "<TS;>;)D"
        }
    .end annotation
.end method

.method public abstract dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector",
            "<TS;>;)D"
        }
    .end annotation
.end method

.method public abstract getNorm()D
.end method

.method public abstract getNorm1()D
.end method

.method public abstract getNormInf()D
.end method

.method public abstract getNormSq()D
.end method

.method public abstract getZero()Lorg/apache/commons/math3/geometry/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/Vector",
            "<TS;>;"
        }
    .end annotation
.end method

.method public abstract isInfinite()Z
.end method

.method public abstract negate()Lorg/apache/commons/math3/geometry/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/Vector",
            "<TS;>;"
        }
    .end annotation
.end method

.method public abstract normalize()Lorg/apache/commons/math3/geometry/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/Vector",
            "<TS;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation
.end method

.method public abstract scalarMultiply(D)Lorg/apache/commons/math3/geometry/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Lorg/apache/commons/math3/geometry/Vector",
            "<TS;>;"
        }
    .end annotation
.end method

.method public abstract subtract(DLorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/apache/commons/math3/geometry/Vector",
            "<TS;>;)",
            "Lorg/apache/commons/math3/geometry/Vector",
            "<TS;>;"
        }
    .end annotation
.end method

.method public abstract subtract(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector",
            "<TS;>;)",
            "Lorg/apache/commons/math3/geometry/Vector",
            "<TS;>;"
        }
    .end annotation
.end method

.method public abstract toString(Ljava/text/NumberFormat;)Ljava/lang/String;
.end method
