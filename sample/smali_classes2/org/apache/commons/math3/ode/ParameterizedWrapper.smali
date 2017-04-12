.class Lorg/apache/commons/math3/ode/ParameterizedWrapper;
.super Ljava/lang/Object;
.source "ParameterizedWrapper.java"

# interfaces
.implements Lorg/apache/commons/math3/ode/ParameterizedODE;


# instance fields
.field private final fode:Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;)V
    .locals 0
    .param p1, "ode"    # Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/apache/commons/math3/ode/ParameterizedWrapper;->fode:Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;

    .line 40
    return-void
.end method


# virtual methods
.method public computeDerivatives(D[D[D)V
    .locals 1
    .param p1, "t"    # D
    .param p3, "y"    # [D
    .param p4, "yDot"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ParameterizedWrapper;->fode:Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;->computeDerivatives(D[D[D)V

    .line 59
    return-void
.end method

.method public getDimension()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ParameterizedWrapper;->fode:Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;

    invoke-interface {v0}, Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;->getDimension()I

    move-result v0

    return v0
.end method

.method public getParameter(Ljava/lang/String;)D
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/ode/UnknownParameterException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/ode/ParameterizedWrapper;->isSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lorg/apache/commons/math3/ode/UnknownParameterException;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/ode/UnknownParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    return-wide v0
.end method

.method public getParametersNames()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public isSupported(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public setParameter(Ljava/lang/String;D)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 82
    return-void
.end method
