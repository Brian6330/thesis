.class public Lorg/apache/commons/math3/genetics/InvalidRepresentationException;
.super Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
.source "InvalidRepresentationException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public varargs constructor <init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "pattern"    # Lorg/apache/commons/math3/exception/util/Localizable;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 40
    return-void
.end method
