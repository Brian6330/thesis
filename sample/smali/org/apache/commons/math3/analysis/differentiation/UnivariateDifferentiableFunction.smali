.class public interface abstract Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;
.super Ljava/lang/Object;
.source "UnivariateDifferentiableFunction.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/UnivariateFunction;


# virtual methods
.method public abstract value(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation
.end method
