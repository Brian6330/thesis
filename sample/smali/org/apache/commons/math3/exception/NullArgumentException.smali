.class public Lorg/apache/commons/math3/exception/NullArgumentException;
.super Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
.source "NullArgumentException.java"


# static fields
.field private static final serialVersionUID:J = -0x539cc8a80344c4feL


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NULL_NOT_ALLOWED:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 41
    return-void
.end method

.method public varargs constructor <init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "pattern"    # Lorg/apache/commons/math3/exception/util/Localizable;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 50
    return-void
.end method
