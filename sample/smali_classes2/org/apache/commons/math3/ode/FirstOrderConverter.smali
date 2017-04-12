.class public Lorg/apache/commons/math3/ode/FirstOrderConverter;
.super Ljava/lang/Object;
.source "FirstOrderConverter.java"

# interfaces
.implements Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;


# instance fields
.field private final dimension:I

.field private final equations:Lorg/apache/commons/math3/ode/SecondOrderDifferentialEquations;

.field private final z:[D

.field private final zDDot:[D

.field private final zDot:[D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/ode/SecondOrderDifferentialEquations;)V
    .locals 1
    .param p1, "equations"    # Lorg/apache/commons/math3/ode/SecondOrderDifferentialEquations;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lorg/apache/commons/math3/ode/FirstOrderConverter;->equations:Lorg/apache/commons/math3/ode/SecondOrderDifferentialEquations;

    .line 79
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/SecondOrderDifferentialEquations;->getDimension()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/math3/ode/FirstOrderConverter;->dimension:I

    .line 80
    iget v0, p0, Lorg/apache/commons/math3/ode/FirstOrderConverter;->dimension:I

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/FirstOrderConverter;->z:[D

    .line 81
    iget v0, p0, Lorg/apache/commons/math3/ode/FirstOrderConverter;->dimension:I

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/FirstOrderConverter;->zDot:[D

    .line 82
    iget v0, p0, Lorg/apache/commons/math3/ode/FirstOrderConverter;->dimension:I

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/FirstOrderConverter;->zDDot:[D

    .line 83
    return-void
.end method


# virtual methods
.method public computeDerivatives(D[D[D)V
    .locals 9
    .param p1, "t"    # D
    .param p3, "y"    # [D
    .param p4, "yDot"    # [D

    .prologue
    const/4 v7, 0x0

    .line 102
    iget-object v0, p0, Lorg/apache/commons/math3/ode/FirstOrderConverter;->z:[D

    iget v1, p0, Lorg/apache/commons/math3/ode/FirstOrderConverter;->dimension:I

    invoke-static {p3, v7, v0, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    iget v0, p0, Lorg/apache/commons/math3/ode/FirstOrderConverter;->dimension:I

    iget-object v1, p0, Lorg/apache/commons/math3/ode/FirstOrderConverter;->zDot:[D

    iget v2, p0, Lorg/apache/commons/math3/ode/FirstOrderConverter;->dimension:I

    invoke-static {p3, v0, v1, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    iget-object v1, p0, Lorg/apache/commons/math3/ode/FirstOrderConverter;->equations:Lorg/apache/commons/math3/ode/SecondOrderDifferentialEquations;

    iget-object v4, p0, Lorg/apache/commons/math3/ode/FirstOrderConverter;->z:[D

    iget-object v5, p0, Lorg/apache/commons/math3/ode/FirstOrderConverter;->zDot:[D

    iget-object v6, p0, Lorg/apache/commons/math3/ode/FirstOrderConverter;->zDDot:[D

    move-wide v2, p1

    invoke-interface/range {v1 .. v6}, Lorg/apache/commons/math3/ode/SecondOrderDifferentialEquations;->computeSecondDerivatives(D[D[D[D)V

    .line 109
    iget-object v0, p0, Lorg/apache/commons/math3/ode/FirstOrderConverter;->zDot:[D

    iget v1, p0, Lorg/apache/commons/math3/ode/FirstOrderConverter;->dimension:I

    invoke-static {v0, v7, p4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    iget-object v0, p0, Lorg/apache/commons/math3/ode/FirstOrderConverter;->zDDot:[D

    iget v1, p0, Lorg/apache/commons/math3/ode/FirstOrderConverter;->dimension:I

    iget v2, p0, Lorg/apache/commons/math3/ode/FirstOrderConverter;->dimension:I

    invoke-static {v0, v7, p4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    return-void
.end method

.method public getDimension()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lorg/apache/commons/math3/ode/FirstOrderConverter;->dimension:I

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method
