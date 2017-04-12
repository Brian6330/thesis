.class public Lorg/apache/commons/math3/exception/NotANumberException;
.super Lorg/apache/commons/math3/exception/MathIllegalNumberException;
.source "NotANumberException.java"


# static fields
.field private static final serialVersionUID:J = 0x133054aL


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 34
    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NAN_NOT_ALLOWED:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalNumberException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;[Ljava/lang/Object;)V

    .line 35
    return-void
.end method
