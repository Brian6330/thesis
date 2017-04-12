.class public interface abstract Lorg/apache/commons/math3/stat/interval/BinomialConfidenceInterval;
.super Ljava/lang/Object;
.source "BinomialConfidenceInterval.java"


# virtual methods
.method public abstract createInterval(IID)Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation
.end method
