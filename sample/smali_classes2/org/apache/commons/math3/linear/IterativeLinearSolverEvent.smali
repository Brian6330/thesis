.class public abstract Lorg/apache/commons/math3/linear/IterativeLinearSolverEvent;
.super Lorg/apache/commons/math3/util/IterationEvent;
.source "IterativeLinearSolverEvent.java"


# static fields
.field private static final serialVersionUID:J = 0x1330241L


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "iterations"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/util/IterationEvent;-><init>(Ljava/lang/Object;I)V

    .line 43
    return-void
.end method


# virtual methods
.method public abstract getNormOfResidual()D
.end method

.method public getResidual()Lorg/apache/commons/math3/linear/RealVector;
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract getRightHandSideVector()Lorg/apache/commons/math3/linear/RealVector;
.end method

.method public abstract getSolution()Lorg/apache/commons/math3/linear/RealVector;
.end method

.method public providesResidual()Z
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method
