.class public Lorg/apache/commons/math3/optimization/InitialGuess;
.super Ljava/lang/Object;
.source "InitialGuess.java"

# interfaces
.implements Lorg/apache/commons/math3/optimization/OptimizationData;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final init:[D


# direct methods
.method public constructor <init>([D)V
    .locals 1
    .param p1, "startPoint"    # [D

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/InitialGuess;->init:[D

    .line 38
    return-void
.end method


# virtual methods
.method public getInitialGuess()[D
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/InitialGuess;->init:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method
