.class public Lorg/apache/commons/math3/exception/TooManyIterationsException;
.super Lorg/apache/commons/math3/exception/MaxCountExceededException;
.source "TooManyIterationsException.java"


# static fields
.field private static final serialVersionUID:J = 0x133067bL


# direct methods
.method public constructor <init>(Ljava/lang/Number;)V
    .locals 3
    .param p1, "max"    # Ljava/lang/Number;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/exception/MaxCountExceededException;-><init>(Ljava/lang/Number;)V

    .line 37
    invoke-virtual {p0}, Lorg/apache/commons/math3/exception/TooManyIterationsException;->getContext()Lorg/apache/commons/math3/exception/util/ExceptionContext;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ITERATIONS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->addMessage(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 38
    return-void
.end method
