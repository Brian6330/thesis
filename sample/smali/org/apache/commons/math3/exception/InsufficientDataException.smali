.class public Lorg/apache/commons/math3/exception/InsufficientDataException;
.super Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
.source "InsufficientDataException.java"


# static fields
.field private static final serialVersionUID:J = -0x247d3cad13b56c7fL


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INSUFFICIENT_DATA:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/exception/InsufficientDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 38
    return-void
.end method

.method public varargs constructor <init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "pattern"    # Lorg/apache/commons/math3/exception/util/Localizable;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 48
    return-void
.end method
