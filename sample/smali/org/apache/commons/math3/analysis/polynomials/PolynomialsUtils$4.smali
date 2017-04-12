.class final Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$4;
.super Ljava/lang/Object;
.source "PolynomialsUtils.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$RecurrenceCoefficientsGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->createLegendrePolynomial(I)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generate(I)[Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 5
    .param p1, "k"    # I

    .prologue
    .line 187
    add-int/lit8 v0, p1, 0x1

    .line 188
    .local v0, "kP1":I
    const/4 v1, 0x3

    new-array v1, v1, [Lorg/apache/commons/math3/fraction/BigFraction;

    const/4 v2, 0x0

    sget-object v3, Lorg/apache/commons/math3/fraction/BigFraction;->ZERO:Lorg/apache/commons/math3/fraction/BigFraction;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lorg/apache/commons/math3/fraction/BigFraction;

    add-int v4, p1, v0

    invoke-direct {v3, v4, v0}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(II)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-direct {v3, p1, v0}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(II)V

    aput-object v3, v1, v2

    return-object v1
.end method
