.class public Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;
.super Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
.source "NonPositiveDefiniteOperatorException.java"


# static fields
.field private static final serialVersionUID:J = 0xcb9f6026cb18ed7L


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 41
    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NON_POSITIVE_DEFINITE_OPERATOR:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 42
    return-void
.end method
