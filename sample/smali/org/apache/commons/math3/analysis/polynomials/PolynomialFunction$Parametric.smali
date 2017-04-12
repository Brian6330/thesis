.class public Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction$Parametric;
.super Ljava/lang/Object;
.source "PolynomialFunction.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parametric"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs gradient(D[D)[D
    .locals 5
    .param p1, "x"    # D
    .param p3, "parameters"    # [D

    .prologue
    .line 397
    array-length v4, p3

    new-array v0, v4, [D

    .line 398
    .local v0, "gradient":[D
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 399
    .local v2, "xn":D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p3

    if-ge v1, v4, :cond_0

    .line 400
    aput-wide v2, v0, v1

    .line 401
    mul-double/2addr v2, p1

    .line 399
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 403
    :cond_0
    return-object v0
.end method

.method public varargs value(D[D)D
    .locals 3
    .param p1, "x"    # D
    .param p3, "parameters"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    .prologue
    .line 409
    invoke-static {p3, p1, p2}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->evaluate([DD)D

    move-result-wide v0

    return-wide v0
.end method
