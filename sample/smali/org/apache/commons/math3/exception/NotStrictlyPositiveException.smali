.class public Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
.super Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
.source "NotStrictlyPositiveException.java"


# static fields
.field private static final serialVersionUID:J = -0x6c97725f35d0a64dL


# direct methods
.method public constructor <init>(Ljava/lang/Number;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Number;

    .prologue
    .line 37
    sget-object v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;->INTEGER_ZERO:Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V
    .locals 2
    .param p1, "specific"    # Lorg/apache/commons/math3/exception/util/Localizable;
    .param p2, "value"    # Ljava/lang/Number;

    .prologue
    .line 47
    sget-object v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;->INTEGER_ZERO:Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    .line 48
    return-void
.end method
