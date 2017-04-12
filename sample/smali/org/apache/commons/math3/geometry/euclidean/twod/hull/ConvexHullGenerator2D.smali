.class public interface abstract Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHullGenerator2D;
.super Ljava/lang/Object;
.source "ConvexHullGenerator2D.java"

# interfaces
.implements Lorg/apache/commons/math3/geometry/hull/ConvexHullGenerator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/hull/ConvexHullGenerator",
        "<",
        "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
        "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract generate(Ljava/util/Collection;)Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/ConvergenceException;
        }
    .end annotation
.end method
