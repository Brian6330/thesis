.class final enum Lorg/apache/commons/math3/ode/events/Transformer$5;
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
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/math3/ode/events/Transformer;-><init>(Ljava/lang/String;ILorg/apache/commons/math3/ode/events/Transformer$1;)V

    return-void
.end method


# virtual methods
.method protected transformed(D)D
    .locals 5
    .param p1, "g"    # D

    .prologue
    .line 97
    sget-wide v0, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    neg-double v2, p1

    invoke-static {v2, v3, p1, p2}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method
