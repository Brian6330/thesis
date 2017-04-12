.class public interface abstract Lorg/apache/commons/math3/ode/ParameterizedODE;
.super Ljava/lang/Object;
.source "ParameterizedODE.java"

# interfaces
.implements Lorg/apache/commons/math3/ode/Parameterizable;


# virtual methods
.method public abstract getParameter(Ljava/lang/String;)D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/ode/UnknownParameterException;
        }
    .end annotation
.end method

.method public abstract setParameter(Ljava/lang/String;D)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/ode/UnknownParameterException;
        }
    .end annotation
.end method
