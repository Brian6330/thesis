.class public Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolator;
.super Ljava/lang/Object;
.source "PiecewiseBicubicSplineInterpolator.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/interpolation/BivariateGridInterpolator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic interpolate([D[D[[D)Lorg/apache/commons/math3/analysis/BivariateFunction;
    .locals 1
    .param p1, "x0"    # [D
    .param p2, "x1"    # [D
    .param p3, "x2"    # [[D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolator;->interpolate([D[D[[D)Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolatingFunction;

    move-result-object v0

    return-object v0
.end method

.method public interpolate([D[D[[D)Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolatingFunction;
    .locals 1
    .param p1, "xval"    # [D
    .param p2, "yval"    # [D
    .param p3, "fval"    # [[D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    .prologue
    .line 43
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    aget-object v0, p3, v0

    if-nez v0, :cond_1

    .line 47
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0

    .line 50
    :cond_1
    array-length v0, p1

    if-eqz v0, :cond_2

    array-length v0, p2

    if-eqz v0, :cond_2

    array-length v0, p3

    if-nez v0, :cond_3

    .line 53
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw v0

    .line 56
    :cond_3
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 57
    invoke-static {p2}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 59
    new-instance v0, Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolatingFunction;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolatingFunction;-><init>([D[D[[D)V

    return-object v0
.end method
