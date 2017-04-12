.class public interface abstract Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;
.super Ljava/lang/Object;
.source "LeastSquaresProblem.java"

# interfaces
.implements Lorg/apache/commons/math3/optim/OptimizationProblem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/optim/OptimizationProblem",
        "<",
        "Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract evaluate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;
.end method

.method public abstract getObservationSize()I
.end method

.method public abstract getParameterSize()I
.end method

.method public abstract getStart()Lorg/apache/commons/math3/linear/RealVector;
.end method
