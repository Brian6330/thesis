.class public interface abstract Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
.super Ljava/lang/Object;
.source "StepInterpolator.java"

# interfaces
.implements Ljava/io/Externalizable;


# virtual methods
.method public abstract copy()Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation
.end method

.method public abstract getCurrentTime()D
.end method

.method public abstract getInterpolatedDerivatives()[D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation
.end method

.method public abstract getInterpolatedSecondaryDerivatives(I)[D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation
.end method

.method public abstract getInterpolatedSecondaryState(I)[D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation
.end method

.method public abstract getInterpolatedState()[D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation
.end method

.method public abstract getInterpolatedTime()D
.end method

.method public abstract getPreviousTime()D
.end method

.method public abstract isForward()Z
.end method

.method public abstract setInterpolatedTime(D)V
.end method
