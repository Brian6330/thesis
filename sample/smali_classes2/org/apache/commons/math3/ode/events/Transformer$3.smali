.class final enum Lorg/apache/commons/math3/ode/events/Transformer$3;
.super Lorg/apache/commons/math3/ode/events/Transformer;
.source "Transformer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/ode/events/Transformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/math3/ode/events/Transformer;-><init>(Ljava/lang/String;ILorg/apache/commons/math3/ode/events/Transformer$1;)V

    return-void
.end method


# virtual methods
.method protected transformed(D)D
    .locals 3
    .param p1, "g"    # D

    .prologue
    .line 69
    neg-double v0, p1

    return-wide v0
.end method
