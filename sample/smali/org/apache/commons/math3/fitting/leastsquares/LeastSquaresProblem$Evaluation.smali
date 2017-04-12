.class public interface abstract Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;
.super Ljava/lang/Object;
.source "LeastSquaresProblem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Evaluation"
.end annotation


# virtual methods
.method public abstract getCost()D
.end method

.method public abstract getCovariances(D)Lorg/apache/commons/math3/linear/RealMatrix;
.end method

.method public abstract getJacobian()Lorg/apache/commons/math3/linear/RealMatrix;
.end method

.method public abstract getPoint()Lorg/apache/commons/math3/linear/RealVector;
.end method

.method public abstract getRMS()D
.end method

.method public abstract getResiduals()Lorg/apache/commons/math3/linear/RealVector;
.end method

.method public abstract getSigma(D)Lorg/apache/commons/math3/linear/RealVector;
.end method
