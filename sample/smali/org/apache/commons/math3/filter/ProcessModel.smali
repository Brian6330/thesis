.class public interface abstract Lorg/apache/commons/math3/filter/ProcessModel;
.super Ljava/lang/Object;
.source "ProcessModel.java"


# virtual methods
.method public abstract getControlMatrix()Lorg/apache/commons/math3/linear/RealMatrix;
.end method

.method public abstract getInitialErrorCovariance()Lorg/apache/commons/math3/linear/RealMatrix;
.end method

.method public abstract getInitialStateEstimate()Lorg/apache/commons/math3/linear/RealVector;
.end method

.method public abstract getProcessNoise()Lorg/apache/commons/math3/linear/RealMatrix;
.end method

.method public abstract getStateTransitionMatrix()Lorg/apache/commons/math3/linear/RealMatrix;
.end method
