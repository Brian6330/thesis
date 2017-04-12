.class public Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;
.super Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
.source "ModelSpecificationException.java"


# static fields
.field private static final serialVersionUID:J = 0x3a608a9c5a1ca46eL


# direct methods
.method public varargs constructor <init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "pattern"    # Lorg/apache/commons/math3/exception/util/Localizable;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 39
    return-void
.end method
