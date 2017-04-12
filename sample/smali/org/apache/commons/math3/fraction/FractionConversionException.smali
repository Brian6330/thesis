.class public Lorg/apache/commons/math3/fraction/FractionConversionException;
.super Lorg/apache/commons/math3/exception/ConvergenceException;
.source "FractionConversionException.java"


# static fields
.field private static final serialVersionUID:J = -0x40b215e598873407L


# direct methods
.method public constructor <init>(DI)V
    .locals 5
    .param p1, "value"    # D
    .param p3, "maxIterations"    # I

    .prologue
    .line 41
    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FAILED_FRACTION_CONVERSION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method public constructor <init>(DJJ)V
    .locals 5
    .param p1, "value"    # D
    .param p3, "p"    # J
    .param p5, "q"    # J

    .prologue
    .line 52
    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FRACTION_CONVERSION_OVERFLOW:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 53
    return-void
.end method
