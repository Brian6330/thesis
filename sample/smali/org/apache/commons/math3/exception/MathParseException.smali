.class public Lorg/apache/commons/math3/exception/MathParseException;
.super Lorg/apache/commons/math3/exception/MathIllegalStateException;
.source "MathParseException.java"

# interfaces
.implements Lorg/apache/commons/math3/exception/util/ExceptionContextProvider;


# static fields
.field private static final serialVersionUID:J = -0x539cc8a80344c4feL


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 5
    .param p1, "wrong"    # Ljava/lang/String;
    .param p2, "position"    # I

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>()V

    .line 53
    invoke-virtual {p0}, Lorg/apache/commons/math3/exception/MathParseException;->getContext()Lorg/apache/commons/math3/exception/util/ExceptionContext;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CANNOT_PARSE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->addMessage(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Class;)V
    .locals 5
    .param p1, "wrong"    # Ljava/lang/String;
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>()V

    .line 42
    invoke-virtual {p0}, Lorg/apache/commons/math3/exception/MathParseException;->getContext()Lorg/apache/commons/math3/exception/util/ExceptionContext;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CANNOT_PARSE_AS_TYPE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->addMessage(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 44
    return-void
.end method
