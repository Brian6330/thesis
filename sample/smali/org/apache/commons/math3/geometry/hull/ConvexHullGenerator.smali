.class public interface abstract Lorg/apache/commons/math3/geometry/hull/ConvexHullGenerator;
.super Ljava/lang/Object;
.source "ConvexHullGenerator.java"


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
.method public abstract generate(Ljava/util/Collection;)Lorg/apache/commons/math3/geometry/hull/ConvexHull;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TP;>;)",
            "Lorg/apache/commons/math3/geometry/hull/ConvexHull",
            "<TS;TP;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/ConvergenceException;
        }
    .end annotation
.end method
