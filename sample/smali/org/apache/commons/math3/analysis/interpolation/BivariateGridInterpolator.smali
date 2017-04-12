.class public interface abstract Lorg/apache/commons/math3/analysis/interpolation/BivariateGridInterpolator;
.super Ljava/lang/Object;
.source "BivariateGridInterpolator.java"


# virtual methods
.method public abstract interpolate([D[D[[D)Lorg/apache/commons/math3/analysis/BivariateFunction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation
.end method
