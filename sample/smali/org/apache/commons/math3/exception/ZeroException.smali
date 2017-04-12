.class public Lorg/apache/commons/math3/exception/ZeroException;
.super Lorg/apache/commons/math3/exception/MathIllegalNumberException;
.source "ZeroException.java"


# static fields
.field private static final serialVersionUID:J = -0x1b366d4b10aa4a0fL


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_NOT_ALLOWED:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/exception/ZeroException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 37
    return-void
.end method

.method public varargs constructor <init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "specific"    # Lorg/apache/commons/math3/exception/util/Localizable;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .prologue
    .line 46
    sget-object v0, Lorg/apache/commons/math3/exception/ZeroException;->INTEGER_ZERO:Ljava/lang/Integer;

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/math3/exception/MathIllegalNumberException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;[Ljava/lang/Object;)V

    .line 47
    return-void
.end method
