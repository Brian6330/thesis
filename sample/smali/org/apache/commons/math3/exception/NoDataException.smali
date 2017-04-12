.class public Lorg/apache/commons/math3/exception/NoDataException;
.super Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
.source "NoDataException.java"


# static fields
.field private static final serialVersionUID:J = -0x325df360bb1970cbL


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NO_DATA:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/exception/util/Localizable;)V
    .locals 1
    .param p1, "specific"    # Lorg/apache/commons/math3/exception/util/Localizable;

    .prologue
    .line 44
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 45
    return-void
.end method
