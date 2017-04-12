.class public Lorg/apache/commons/math3/exception/ConvergenceException;
.super Lorg/apache/commons/math3/exception/MathIllegalStateException;
.source "ConvergenceException.java"


# static fields
.field private static final serialVersionUID:J = 0x3c1742cdad69f2e7L


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CONVERGENCE_FAILED:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 37
    return-void
.end method

.method public varargs constructor <init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "pattern"    # Lorg/apache/commons/math3/exception/util/Localizable;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>()V

    .line 48
    invoke-virtual {p0}, Lorg/apache/commons/math3/exception/ConvergenceException;->getContext()Lorg/apache/commons/math3/exception/util/ExceptionContext;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->addMessage(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 49
    return-void
.end method
