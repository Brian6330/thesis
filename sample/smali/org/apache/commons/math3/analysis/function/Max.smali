.class public Lorg/apache/commons/math3/analysis/function/Max;
.super Ljava/lang/Object;
.source "Max.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/BivariateFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value(DD)D
    .locals 3
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 31
    invoke-static {p1, p2, p3, p4}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method
