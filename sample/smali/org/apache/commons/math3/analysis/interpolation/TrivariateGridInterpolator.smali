.class public interface abstract Lorg/apache/commons/math3/analysis/interpolation/TrivariateGridInterpolator;
.super Ljava/lang/Object;
.source "TrivariateGridInterpolator.java"


# virtual methods
.method public abstract interpolate([D[D[D[[[D)Lorg/apache/commons/math3/analysis/TrivariateFunction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation
.end method