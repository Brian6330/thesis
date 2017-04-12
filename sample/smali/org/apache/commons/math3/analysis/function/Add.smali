.class public Lorg/apache/commons/math3/analysis/function/Add;
.super Ljava/lang/Object;
.source "Add.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/BivariateFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value(DD)D
    .locals 3
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 30
    add-double v0, p1, p3

    return-wide v0
.end method
