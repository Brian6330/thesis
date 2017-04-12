.class public Lorg/apache/commons/math3/exception/MathInternalError;
.super Lorg/apache/commons/math3/exception/MathIllegalStateException;
.source "MathInternalError.java"


# static fields
.field private static final REPORT_URL:Ljava/lang/String; = "https://issues.apache.org/jira/browse/MATH"

.field private static final serialVersionUID:J = -0x571b96fbd1838b3eL


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>()V

    .line 37
    invoke-virtual {p0}, Lorg/apache/commons/math3/exception/MathInternalError;->getContext()Lorg/apache/commons/math3/exception/util/ExceptionContext;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INTERNAL_ERROR:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "https://issues.apache.org/jira/browse/MATH"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->addMessage(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 45
    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INTERNAL_ERROR:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "https://issues.apache.org/jira/browse/MATH"

    aput-object v3, v1, v2

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Ljava/lang/Throwable;Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 46
    return-void
.end method

.method public varargs constructor <init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "pattern"    # Lorg/apache/commons/math3/exception/util/Localizable;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 56
    return-void
.end method
