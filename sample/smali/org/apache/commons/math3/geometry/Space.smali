.class public interface abstract Lorg/apache/commons/math3/geometry/Space;
.super Ljava/lang/Object;
.source "Space.java"

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract getDimension()I
.end method

.method public abstract getSubSpace()Lorg/apache/commons/math3/geometry/Space;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;
        }
    .end annotation
.end method
