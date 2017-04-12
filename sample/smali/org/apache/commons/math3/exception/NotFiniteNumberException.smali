.class public Lorg/apache/commons/math3/exception/NotFiniteNumberException;
.super Lorg/apache/commons/math3/exception/MathIllegalNumberException;
.source "NotFiniteNumberException.java"


# static fields
.field private static final serialVersionUID:J = -0x54ab1889d01291a2L


# direct methods
.method public varargs constructor <init>(Ljava/lang/Number;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "wrong"    # Ljava/lang/Number;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 39
    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_FINITE_NUMBER:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/math3/exception/NotFiniteNumberException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;[Ljava/lang/Object;)V

    .line 40
    return-void
.end method

.method public varargs constructor <init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "specific"    # Lorg/apache/commons/math3/exception/util/Localizable;
    .param p2, "wrong"    # Ljava/lang/Number;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/exception/MathIllegalNumberException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;[Ljava/lang/Object;)V

    .line 53
    return-void
.end method
