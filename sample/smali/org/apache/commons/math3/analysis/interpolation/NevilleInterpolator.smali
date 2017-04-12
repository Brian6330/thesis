.class public Lorg/apache/commons/math3/analysis/interpolation/NevilleInterpolator;
.super Ljava/lang/Object;
.source "NevilleInterpolator.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = 0x29af5033dc3bd7c5L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic interpolate([D[D)Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 1
    .param p1, "x0"    # [D
    .param p2, "x1"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/analysis/interpolation/NevilleInterpolator;->interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;

    move-result-object v0

    return-object v0
.end method

.method public interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;
    .locals 1
    .param p1, "x"    # [D
    .param p2, "y"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    .prologue
    .line 58
    new-instance v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;-><init>([D[D)V

    return-object v0
.end method
