.class public Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;
.super Lorg/apache/commons/math3/linear/IterativeLinearSolverEvent;
.source "DefaultIterativeLinearSolverEvent.java"


# static fields
.field private static final serialVersionUID:J = 0x1330241L


# instance fields
.field private final b:Lorg/apache/commons/math3/linear/RealVector;

.field private final r:Lorg/apache/commons/math3/linear/RealVector;

.field private final rnorm:D

.field private final x:Lorg/apache/commons/math3/linear/RealVector;


# direct methods
.method public constructor <init>(Ljava/lang/Object;ILorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;D)V
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "iterations"    # I
    .param p3, "x"    # Lorg/apache/commons/math3/linear/RealVector;
    .param p4, "b"    # Lorg/apache/commons/math3/linear/RealVector;
    .param p5, "rnorm"    # D

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/linear/IterativeLinearSolverEvent;-><init>(Ljava/lang/Object;I)V

    .line 93
    iput-object p3, p0, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;->x:Lorg/apache/commons/math3/linear/RealVector;

    .line 94
    iput-object p4, p0, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;->b:Lorg/apache/commons/math3/linear/RealVector;

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;->r:Lorg/apache/commons/math3/linear/RealVector;

    .line 96
    iput-wide p5, p0, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;->rnorm:D

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;ILorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;D)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "iterations"    # I
    .param p3, "x"    # Lorg/apache/commons/math3/linear/RealVector;
    .param p4, "b"    # Lorg/apache/commons/math3/linear/RealVector;
    .param p5, "r"    # Lorg/apache/commons/math3/linear/RealVector;
    .param p6, "rnorm"    # D

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/linear/IterativeLinearSolverEvent;-><init>(Ljava/lang/Object;I)V

    .line 66
    iput-object p3, p0, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;->x:Lorg/apache/commons/math3/linear/RealVector;

    .line 67
    iput-object p4, p0, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;->b:Lorg/apache/commons/math3/linear/RealVector;

    .line 68
    iput-object p5, p0, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;->r:Lorg/apache/commons/math3/linear/RealVector;

    .line 69
    iput-wide p6, p0, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;->rnorm:D

    .line 70
    return-void
.end method


# virtual methods
.method public getNormOfResidual()D
    .locals 2

    .prologue
    .line 102
    iget-wide v0, p0, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;->rnorm:D

    return-wide v0
.end method

.method public getResidual()Lorg/apache/commons/math3/linear/RealVector;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;->r:Lorg/apache/commons/math3/linear/RealVector;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;->r:Lorg/apache/commons/math3/linear/RealVector;

    return-object v0

    .line 116
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getRightHandSideVector()Lorg/apache/commons/math3/linear/RealVector;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;->b:Lorg/apache/commons/math3/linear/RealVector;

    return-object v0
.end method

.method public getSolution()Lorg/apache/commons/math3/linear/RealVector;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;->x:Lorg/apache/commons/math3/linear/RealVector;

    return-object v0
.end method

.method public providesResidual()Z
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;->r:Lorg/apache/commons/math3/linear/RealVector;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
