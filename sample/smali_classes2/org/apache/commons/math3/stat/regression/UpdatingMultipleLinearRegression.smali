.class public interface abstract Lorg/apache/commons/math3/stat/regression/UpdatingMultipleLinearRegression;
.super Ljava/lang/Object;
.source "UpdatingMultipleLinearRegression.java"


# virtual methods
.method public abstract addObservation([DD)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;
        }
    .end annotation
.end method

.method public abstract addObservations([[D[D)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;
        }
    .end annotation
.end method

.method public abstract clear()V
.end method

.method public abstract getN()J
.end method

.method public abstract hasIntercept()Z
.end method

.method public abstract regress()Lorg/apache/commons/math3/stat/regression/RegressionResults;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;,
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation
.end method

.method public abstract regress([I)Lorg/apache/commons/math3/stat/regression/RegressionResults;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;,
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation
.end method
