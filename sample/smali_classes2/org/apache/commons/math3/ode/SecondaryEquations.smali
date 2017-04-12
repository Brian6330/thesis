.class public interface abstract Lorg/apache/commons/math3/ode/SecondaryEquations;
.super Ljava/lang/Object;
.source "SecondaryEquations.java"


# virtual methods
.method public abstract computeDerivatives(D[D[D[D[D)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation
.end method

.method public abstract getDimension()I
.end method
