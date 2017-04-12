.class public interface abstract Lorg/apache/commons/math3/ode/FirstOrderIntegrator;
.super Ljava/lang/Object;
.source "FirstOrderIntegrator.java"

# interfaces
.implements Lorg/apache/commons/math3/ode/ODEIntegrator;


# virtual methods
.method public abstract integrate(Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;D[DD[D)D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation
.end method
