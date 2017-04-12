.class public Lorg/apache/commons/math3/exception/MathArithmeticException;
.super Ljava/lang/ArithmeticException;
.source "MathArithmeticException.java"

# interfaces
.implements Lorg/apache/commons/math3/exception/util/ExceptionContextProvider;


# static fields
.field private static final serialVersionUID:J = -0x539cc8a80344c4feL


# instance fields
.field private final context:Lorg/apache/commons/math3/exception/util/ExceptionContext;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/ArithmeticException;-><init>()V

    .line 43
    new-instance v0, Lorg/apache/commons/math3/exception/util/ExceptionContext;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/exception/util/ExceptionContext;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lorg/apache/commons/math3/exception/MathArithmeticException;->context:Lorg/apache/commons/math3/exception/util/ExceptionContext;

    .line 44
    iget-object v0, p0, Lorg/apache/commons/math3/exception/MathArithmeticException;->context:Lorg/apache/commons/math3/exception/util/ExceptionContext;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ARITHMETIC_EXCEPTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->addMessage(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 45
    return-void
.end method

.method public varargs constructor <init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "pattern"    # Lorg/apache/commons/math3/exception/util/Localizable;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/ArithmeticException;-><init>()V

    .line 56
    new-instance v0, Lorg/apache/commons/math3/exception/util/ExceptionContext;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/exception/util/ExceptionContext;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lorg/apache/commons/math3/exception/MathArithmeticException;->context:Lorg/apache/commons/math3/exception/util/ExceptionContext;

    .line 57
    iget-object v0, p0, Lorg/apache/commons/math3/exception/MathArithmeticException;->context:Lorg/apache/commons/math3/exception/util/ExceptionContext;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->addMessage(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 58
    return-void
.end method


# virtual methods
.method public getContext()Lorg/apache/commons/math3/exception/util/ExceptionContext;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/apache/commons/math3/exception/MathArithmeticException;->context:Lorg/apache/commons/math3/exception/util/ExceptionContext;

    return-object v0
.end method

.method public getLocalizedMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/commons/math3/exception/MathArithmeticException;->context:Lorg/apache/commons/math3/exception/util/ExceptionContext;

    invoke-virtual {v0}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/commons/math3/exception/MathArithmeticException;->context:Lorg/apache/commons/math3/exception/util/ExceptionContext;

    invoke-virtual {v0}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
