.class final Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$2;
.super Ljava/lang/Object;
.source "PolynomialsUtils.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$RecurrenceCoefficientsGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->createHermitePolynomial(I)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generate(I)[Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 4
    .param p1, "k"    # I

    .prologue
    .line 134
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/apache/commons/math3/fraction/BigFraction;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/commons/math3/fraction/BigFraction;->ZERO:Lorg/apache/commons/math3/fraction/BigFraction;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/apache/commons/math3/fraction/BigFraction;->TWO:Lorg/apache/commons/math3/fraction/BigFraction;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lorg/apache/commons/math3/fraction/BigFraction;

    mul-int/lit8 v3, p1, 0x2

    invoke-direct {v2, v3}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(I)V

    aput-object v2, v0, v1

    return-object v0
.end method
