.class public interface abstract Lorg/apache/commons/math3/util/Incrementor$MaxCountExceededCallback;
.super Ljava/lang/Object;
.source "Incrementor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/util/Incrementor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MaxCountExceededCallback"
.end annotation


# virtual methods
.method public abstract trigger(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation
.end method
