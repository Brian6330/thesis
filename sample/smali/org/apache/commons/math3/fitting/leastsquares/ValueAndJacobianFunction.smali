.class public interface abstract Lorg/apache/commons/math3/fitting/leastsquares/ValueAndJacobianFunction;
.super Ljava/lang/Object;
.source "ValueAndJacobianFunction.java"

# interfaces
.implements Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;


# virtual methods
.method public abstract computeJacobian([D)Lorg/apache/commons/math3/linear/RealMatrix;
.end method

.method public abstract computeValue([D)Lorg/apache/commons/math3/linear/RealVector;
.end method
