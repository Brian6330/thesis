.class public interface abstract Lorg/apache/commons/math3/analysis/interpolation/MultivariateInterpolator;
.super Ljava/lang/Object;
.source "MultivariateInterpolator.java"


# virtual methods
.method public abstract interpolate([[D[D)Lorg/apache/commons/math3/analysis/MultivariateFunction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation
.end method
