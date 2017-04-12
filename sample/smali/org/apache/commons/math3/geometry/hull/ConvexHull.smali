.class public interface abstract Lorg/apache/commons/math3/geometry/hull/ConvexHull;
.super Ljava/lang/Object;
.source "ConvexHull.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/apache/commons/math3/geometry/Space;",
        "P::",
        "Lorg/apache/commons/math3/geometry/Point",
        "<TS;>;>",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# virtual methods
.method public abstract createRegion()Lorg/apache/commons/math3/geometry/partitioning/Region;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/Region",
            "<TS;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/InsufficientDataException;
        }
    .end annotation
.end method

.method public abstract getVertices()[Lorg/apache/commons/math3/geometry/Point;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TP;"
        }
    .end annotation
.end method
