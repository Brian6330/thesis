.class public interface abstract Lorg/apache/commons/math3/ode/sampling/StepHandler;
.super Ljava/lang/Object;
.source "StepHandler.java"


# virtual methods
.method public abstract handleStep(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation
.end method

.method public abstract init(D[DD)V
.end method
