.class public interface abstract Lorg/apache/commons/math3/ode/MainStateJacobianProvider;
.super Ljava/lang/Object;
.source "MainStateJacobianProvider.java"

# interfaces
.implements Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;


# virtual methods
.method public abstract computeMainStateJacobian(D[D[D[[D)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation
.end method
