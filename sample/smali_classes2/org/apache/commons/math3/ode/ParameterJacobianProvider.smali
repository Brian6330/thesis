.class public interface abstract Lorg/apache/commons/math3/ode/ParameterJacobianProvider;
.super Ljava/lang/Object;
.source "ParameterJacobianProvider.java"

# interfaces
.implements Lorg/apache/commons/math3/ode/Parameterizable;


# virtual methods
.method public abstract computeParameterJacobian(D[D[DLjava/lang/String;[D)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/ode/UnknownParameterException;
        }
    .end annotation
.end method
