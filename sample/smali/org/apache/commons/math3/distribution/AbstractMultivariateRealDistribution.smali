.class public abstract Lorg/apache/commons/math3/distribution/AbstractMultivariateRealDistribution;
.super Ljava/lang/Object;
.source "AbstractMultivariateRealDistribution.java"

# interfaces
.implements Lorg/apache/commons/math3/distribution/MultivariateRealDistribution;


# instance fields
.field private final dimension:I

.field protected final random:Lorg/apache/commons/math3/random/RandomGenerator;


# direct methods
.method protected constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;I)V
    .locals 0
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p2, "n"    # I

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/apache/commons/math3/distribution/AbstractMultivariateRealDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    .line 42
    iput p2, p0, Lorg/apache/commons/math3/distribution/AbstractMultivariateRealDistribution;->dimension:I

    .line 43
    return-void
.end method


# virtual methods
.method public getDimension()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lorg/apache/commons/math3/distribution/AbstractMultivariateRealDistribution;->dimension:I

    return v0
.end method

.method public reseedRandomGenerator(J)V
    .locals 1
    .param p1, "seed"    # J

    .prologue
    .line 47
    iget-object v0, p0, Lorg/apache/commons/math3/distribution/AbstractMultivariateRealDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/random/RandomGenerator;->setSeed(J)V

    .line 48
    return-void
.end method

.method public abstract sample()[D
.end method

.method public sample(I)[[D
    .locals 5
    .param p1, "sampleSize"    # I

    .prologue
    .line 60
    if-gtz p1, :cond_0

    .line 61
    new-instance v2, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_SAMPLES:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v2

    .line 64
    :cond_0
    iget v2, p0, Lorg/apache/commons/math3/distribution/AbstractMultivariateRealDistribution;->dimension:I

    filled-new-array {p1, v2}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    .line 65
    .local v1, "out":[[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 66
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/AbstractMultivariateRealDistribution;->sample()[D

    move-result-object v2

    aput-object v2, v1, v0

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_1
    return-object v1
.end method
