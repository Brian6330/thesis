.class Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization$DataRow;
.super Ljava/lang/Object;
.source "MultivariateNormalMixtureExpectationMaximization.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataRow"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization$DataRow;",
        ">;"
    }
.end annotation


# instance fields
.field private mean:Ljava/lang/Double;

.field private final row:[D


# direct methods
.method constructor <init>([D)V
    .locals 6
    .param p1, "data"    # [D

    .prologue
    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    iput-object p1, p0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization$DataRow;->row:[D

    .line 408
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization$DataRow;->mean:Ljava/lang/Double;

    .line 409
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 410
    iget-object v1, p0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization$DataRow;->mean:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    aget-wide v4, p1, v0

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization$DataRow;->mean:Ljava/lang/Double;

    .line 409
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 412
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization$DataRow;->mean:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    array-length v1, p1

    int-to-double v4, v1

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization$DataRow;->mean:Ljava/lang/Double;

    .line 413
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 394
    check-cast p1, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization$DataRow;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization$DataRow;->compareTo(Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization$DataRow;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization$DataRow;)I
    .locals 2
    .param p1, "other"    # Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization$DataRow;

    .prologue
    .line 421
    iget-object v0, p0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization$DataRow;->mean:Ljava/lang/Double;

    iget-object v1, p1, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization$DataRow;->mean:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 428
    if-ne p0, p1, :cond_0

    .line 429
    const/4 v0, 0x1

    .line 436
    .end local p1    # "other":Ljava/lang/Object;
    :goto_0
    return v0

    .line 432
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization$DataRow;

    if-eqz v0, :cond_1

    .line 433
    iget-object v0, p0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization$DataRow;->row:[D

    check-cast p1, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization$DataRow;

    .end local p1    # "other":Ljava/lang/Object;
    iget-object v1, p1, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization$DataRow;->row:[D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->equals([D[D)Z

    move-result v0

    goto :goto_0

    .line 436
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRow()[D
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization$DataRow;->row:[D

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization$DataRow;->row:[D

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([D)I

    move-result v0

    return v0
.end method
