.class public Lorg/apache/commons/math3/analysis/function/Floor;
.super Ljava/lang/Object;
.source "Floor.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/UnivariateFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value(D)D
    .locals 3
    .param p1, "x"    # D

    .prologue
    .line 31
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v0

    return-wide v0
.end method
