.class final Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$3;
.super Ljava/lang/Object;
.source "PolynomialsUtils.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$RecurrenceCoefficientsGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->createLaguerrePolynomial(I)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generate(I)[Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 5
    .param p1, "k"    # I

    .prologue
    .line 160
    add-int/lit8 v0, p1, 0x1

    .line 161
    .local v0, "kP1":I
    const/4 v1, 0x3

    new-array v1, v1, [Lorg/apache/commons/math3/fraction/BigFraction;

    const/4 v2, 0x0

    new-instance v3, Lorg/apache/commons/math3/fraction/BigFraction;

    mul-int/lit8 v4, p1, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v4, v0}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(II)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lorg/apache/commons/math3/fraction/BigFraction;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v0}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(II)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-direct {v3, p1, v0}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(II)V

    aput-object v3, v1, v2

    return-object v1
.end method
