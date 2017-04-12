.class public interface abstract Lorg/apache/commons/math3/ode/events/EventHandler;
.super Ljava/lang/Object;
.source "EventHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/ode/events/EventHandler$Action;
    }
.end annotation


# virtual methods
.method public abstract eventOccurred(D[DZ)Lorg/apache/commons/math3/ode/events/EventHandler$Action;
.end method

.method public abstract g(D[D)D
.end method

.method public abstract init(D[DD)V
.end method

.method public abstract resetState(D[D)V
.end method
