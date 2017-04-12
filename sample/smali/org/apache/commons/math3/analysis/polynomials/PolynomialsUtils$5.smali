.class final Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$5;
.super Ljava/lang/Object;
.source "PolynomialsUtils.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$RecurrenceCoefficientsGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->createJacobiPolynomial(III)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$v:I

.field final synthetic val$w:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .prologue
    .line 234
    iput p1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$5;->val$v:I

    iput p2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$5;->val$w:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generate(I)[Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 11
    .param p1, "k"    # I

    .prologue
    .line 237
    add-int/lit8 p1, p1, 0x1

    .line 238
    iget v5, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$5;->val$v:I

    add-int/2addr v5, p1

    iget v6, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$5;->val$w:I

    add-int v1, v5, v6

    .line 239
    .local v1, "kvw":I
    add-int v2, v1, p1

    .line 240
    .local v2, "twoKvw":I
    add-int/lit8 v3, v2, -0x1

    .line 241
    .local v3, "twoKvwM1":I
    add-int/lit8 v4, v2, -0x2

    .line 242
    .local v4, "twoKvwM2":I
    mul-int/lit8 v5, p1, 0x2

    mul-int/2addr v5, v1

    mul-int v0, v5, v4

    .line 244
    .local v0, "den":I
    const/4 v5, 0x3

    new-array v5, v5, [Lorg/apache/commons/math3/fraction/BigFraction;

    const/4 v6, 0x0

    new-instance v7, Lorg/apache/commons/math3/fraction/BigFraction;

    iget v8, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$5;->val$v:I

    iget v9, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$5;->val$v:I

    mul-int/2addr v8, v9

    iget v9, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$5;->val$w:I

    iget v10, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$5;->val$w:I

    mul-int/2addr v9, v10

    sub-int/2addr v8, v9

    mul-int/2addr v8, v3

    invoke-direct {v7, v8, v0}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(II)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lorg/apache/commons/math3/fraction/BigFraction;

    mul-int v8, v3, v2

    mul-int/2addr v8, v4

    invoke-direct {v7, v8, v0}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(II)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lorg/apache/commons/math3/fraction/BigFraction;

    iget v8, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$5;->val$v:I

    add-int/2addr v8, p1

    add-int/lit8 v8, v8, -0x1

    mul-int/lit8 v8, v8, 0x2

    iget v9, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$5;->val$w:I

    add-int/2addr v9, p1

    add-int/lit8 v9, v9, -0x1

    mul-int/2addr v8, v9

    mul-int/2addr v8, v2

    invoke-direct {v7, v8, v0}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(II)V

    aput-object v7, v5, v6

    return-object v5
.end method
