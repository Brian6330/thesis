.class public Lorg/apache/commons/math3/linear/NonSelfAdjointOperatorException;
.super Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
.source "NonSelfAdjointOperatorException.java"


# static fields
.field private static final serialVersionUID:J = 0x18c597691ca5ce47L


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NON_SELF_ADJOINT_OPERATOR:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 45
    return-void
.end method
