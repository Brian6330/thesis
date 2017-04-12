.class public Lorg/apache/commons/math3/exception/MathIllegalStateException;
.super Ljava/lang/IllegalStateException;
.source "MathIllegalStateException.java"

# interfaces
.implements Lorg/apache/commons/math3/exception/util/ExceptionContextProvider;


# static fields
.field private static final serialVersionUID:J = -0x539cc8a80344c4feL


# instance fields
.field private final context:Lorg/apache/commons/math3/exception/util/ExceptionContext;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 69
    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ILLEGAL_STATE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 70
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Throwable;Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "pattern"    # Lorg/apache/commons/math3/exception/util/Localizable;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 61
    new-instance v0, Lorg/apache/commons/math3/exception/util/ExceptionContext;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/exception/util/ExceptionContext;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lorg/apache/commons/math3/exception/MathIllegalStateException;->context:Lorg/apache/commons/math3/exception/util/ExceptionContext;

    .line 62
    iget-object v0, p0, Lorg/apache/commons/math3/exception/MathIllegalStateException;->context:Lorg/apache/commons/math3/exception/util/ExceptionContext;

    invoke-virtual {v0, p2, p3}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->addMessage(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method public varargs constructor <init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "pattern"    # Lorg/apache/commons/math3/exception/util/Localizable;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 46
    new-instance v0, Lorg/apache/commons/math3/exception/util/ExceptionContext;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/exception/util/ExceptionContext;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lorg/apache/commons/math3/exception/MathIllegalStateException;->context:Lorg/apache/commons/math3/exception/util/ExceptionContext;

    .line 47
    iget-object v0, p0, Lorg/apache/commons/math3/exception/MathIllegalStateException;->context:Lorg/apache/commons/math3/exception/util/ExceptionContext;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->addMessage(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 48
    return-void
.end method


# virtual methods
.method public getContext()Lorg/apache/commons/math3/exception/util/ExceptionContext;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/commons/math3/exception/MathIllegalStateException;->context:Lorg/apache/commons/math3/exception/util/ExceptionContext;

    return-object v0
.end method

.method public getLocalizedMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/apache/commons/math3/exception/MathIllegalStateException;->context:Lorg/apache/commons/math3/exception/util/ExceptionContext;

    invoke-virtual {v0}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/apache/commons/math3/exception/MathIllegalStateException;->context:Lorg/apache/commons/math3/exception/util/ExceptionContext;

    invoke-virtual {v0}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
