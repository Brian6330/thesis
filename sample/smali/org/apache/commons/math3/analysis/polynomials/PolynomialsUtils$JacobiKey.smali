.class Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$JacobiKey;
.super Ljava/lang/Object;
.source "PolynomialsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JacobiKey"
.end annotation


# instance fields
.field private final v:I

.field private final w:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "v"    # I
    .param p2, "w"    # I

    .prologue
    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    iput p1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$JacobiKey;->v:I

    .line 269
    iput p2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$JacobiKey;->w:I

    .line 270
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 287
    if-eqz p1, :cond_0

    instance-of v2, p1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$JacobiKey;

    if-nez v2, :cond_1

    .line 292
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 291
    check-cast v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$JacobiKey;

    .line 292
    .local v0, "otherK":Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$JacobiKey;
    iget v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$JacobiKey;->v:I

    iget v3, v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$JacobiKey;->v:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$JacobiKey;->w:I

    iget v3, v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$JacobiKey;->w:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 277
    iget v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$JacobiKey;->v:I

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$JacobiKey;->w:I

    xor-int/2addr v0, v1

    return v0
.end method
